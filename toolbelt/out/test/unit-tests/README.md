##Unit Testing Overview/Bare Essentials

Toolbelt uses Flex Unit 4.1 test runner and Mockolate 0.12.4 for mocking and test verifications

Check out the [Mockolate Website](http://mockolate.org/) for full API info.

###Writing a test

####Test Suites

A test suite is a class which holds multiple test classes which logically belong together as a suite.
Suites can also contain a group of other test suites. The class setup is simple, as it only should contain
publicly accessible variables with data type of a suite or a test.

Example:

```
package
{
    import services.ServicesSuite;

    [Suite]
    [RunWith("org.flexunit.runners.Suite")]
    public class EntireSuite
    {
        public var serviceSuite:ServicesSuite;
        public var someTest:SomeTest;
    }
}
```

####Tests

A test is a class which holds the actual unit tests.

#####Mockolate

Through the use of a Mockolate rule, you are able to use convenience
metadata tags which allow you to mock much easier.

`[Mock]` - Creates a "nice" mock of the desired class. "nice" Mock Objects will play nice and return false-y values for methods and properties that aren’t mocked or stubbed.
`[Mock(type="nice")]` - Also creates a "nice" mocked class.
`[Mock(type="strict")]` - Creates a "strict" mock class. ‘strict’ Mock Objects will whinge and cry if you mistreat them by calling methods that aren’t mocked or stubbed. By whinge and cry I mean throw InvocationErrors.
`[Mock(type="partial")]` - A "partial" Mock Object will do whatever they usually do unless you tell them otherwise. Use a partial Mock Object when you must use most of the original behaviour of an Class overriding just a fraction of its behaviour.

All Mock types have the same API.

#####Flex Unit Metatags

`[Before]` - Function below this tag will run before each test.
`[After]` - Function below this tag will run after each test.
`[Test]` - Function below this tag will be treated as a test.

It's important to note, mockolate mocks will be automatically verified in tests. If you would like
to disable auto-verification, your test tag should be written like this: `[Test(verify="false")]`


Example Test:

```
package services
{
    import com.services.social.SocialService;
    import com.signals.components.PopupCloseRequested;
    import com.signals.components.PopupOpenRequested;
    import com.signals.navigator.ScreenRequested;
    import com.signals.services.messaging.ReportServiceErrorRequested;
    import com.signals.services.social.FacebookServiceUserProfileRetrieved;
    import com.signals.services.social.FacebookUserLoggedIn;
    import com.signals.services.social.FacebookUserLoggedOut;

    import mockolate.mock;
    import mockolate.runner.MockolateRule;

    public class SocialServiceTest
    {
        [Rule]
        public var mocks:MockolateRule = new MockolateRule();

        [Mock(type="partial")]
        public var goViral:GoViralInstanceMock;

        public var service:SocialService;

        [Before]
        public function setUp():void
        {
            service = new SocialService();
            service.facebookServiceUserProfileRetrieved = new FacebookServiceUserProfileRetrieved();
            service.facebookUserLoggedIn = new FacebookUserLoggedIn();
            service.facebookUserLoggedOut = new FacebookUserLoggedOut();
            service.reportServiceErrorRequested = new ReportServiceErrorRequested();
            service.usersModel = new UsersModel();
            service.popupOpenRequested = new PopupOpenRequested();
            service.popupCloseRequested = new PopupCloseRequested();
            service.screenRequested = new ScreenRequested();

            service.initialize();
        }

        [After]
        public function tearDown():void
        {
            service.facebookServiceThumbnailRetrieved = null;
            service.facebookServiceUserProfileRetrieved = null;
            service.facebookUserLoggedIn = null;
            service.facebookUserLoggedOut = null;
            service.reportServiceErrorRequested = null;
            service.model = null;
            service.usersModel = null;
            service.popupOpenRequested = null;
            service.popupCloseRequested = null;
            service.screenRequested = null;
            service = null;
        }

        [Test]
        public function it_requestsFacebookProfile():void
        {
            mock(service).method('requestMyFacebookProfile');
            service.login();
        }

    }
}
```
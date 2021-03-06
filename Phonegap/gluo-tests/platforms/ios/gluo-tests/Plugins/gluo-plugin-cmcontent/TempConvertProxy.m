//------------------------------------------------------------------------------
// <wsdl2code-generated>
// This code was generated by http://www.wsdl2code.com iPhone version 2.1
// Date Of Creation: 9/8/2015 12:34:58 AM
//
//  Please dont change this code, regeneration will override your changes
//</wsdl2code-generated>
//
//------------------------------------------------------------------------------
//
//This source code was auto-generated by Wsdl2Code Version
//
#import "TempConvertProxy.h"

@implementation TempConvertProxy

-(id)initWithUrl:(NSString*)url AndDelegate:(id<Wsdl2CodeProxyDelegate>)delegate{
    self = [super init];
    if (self != nil){
        self.service = [[TempConvert alloc] init];
        [self.service setUrl:url];
        [self setUrl:url];
        [self setProxyDelegate:delegate];
    }
    return self;
}

///Origin Return Type:NSString
-(void)FahrenheitToCelsius:(NSString *)Fahrenheit {
    [self.service addTarget:self AndAction:&FahrenheitToCelsiusTarget];
    [self.service FahrenheitToCelsius:Fahrenheit ];
}

void FahrenheitToCelsiusTarget(TempConvertProxy* target, id sender, NSString* xml){
    @try{
        NSString *xmldata = [xml stringByReplacingOccurrencesOfString:@"xmlns=\"http://www.w3schools.com/webservices/\"" withString:@""];
        NSData *data = [xmldata dataUsingEncoding:NSUTF8StringEncoding];
        XPathQuery *xpathQuery = [[XPathQuery alloc] init];
        NSString * query = [NSString stringWithFormat:@"/soap:Envelope/soap:Body/*/*"];
        NSArray *arrayOfWSData = [xpathQuery newXMLXPathQueryResult:data andQuery:query];
        if([arrayOfWSData count] == 0 ){
            NSException *exception = [NSException exceptionWithName:@"Wsdl2Code" reason: @"Response is nil" userInfo: nil];
            if (target.proxyDelegate != nil){
                [target.proxyDelegate proxyRecievedError:exception InMethod:@"FahrenheitToCelsius"];
                return;
            }
        }
        NSString *nodeContentValue = [[NSString alloc] initWithString:[[arrayOfWSData objectAtIndex:0] objectForKey:@"nodeContent"]];
        NSString* result = nil;
        if (nodeContentValue !=nil){
            result = [[NSString alloc] initWithString:nodeContentValue];
        }
         if (target.proxyDelegate != nil){
            [target.proxyDelegate proxydidFinishLoadingData:result InMethod:@"FahrenheitToCelsius"];
            return;
        }
    }
    @catch(NSException *ex){
        if (target.proxyDelegate != nil){
            [target.proxyDelegate proxyRecievedError:ex InMethod:@"FahrenheitToCelsius"];
            return;
        }
    }
}

///Origin Return Type:NSString
-(void)CelsiusToFahrenheit:(NSString *)Celsius {
    [self.service addTarget:self AndAction:&CelsiusToFahrenheitTarget];
    [self.service CelsiusToFahrenheit:Celsius ];
}

void CelsiusToFahrenheitTarget(TempConvertProxy* target, id sender, NSString* xml){
    @try{
        NSString *xmldata = [xml stringByReplacingOccurrencesOfString:@"xmlns=\"http://www.w3schools.com/webservices/\"" withString:@""];
        NSData *data = [xmldata dataUsingEncoding:NSUTF8StringEncoding];
        XPathQuery *xpathQuery = [[XPathQuery alloc] init];
        NSString * query = [NSString stringWithFormat:@"/soap:Envelope/soap:Body/*/*"];
        NSArray *arrayOfWSData = [xpathQuery newXMLXPathQueryResult:data andQuery:query];
        if([arrayOfWSData count] == 0 ){
            NSException *exception = [NSException exceptionWithName:@"Wsdl2Code" reason: @"Response is nil" userInfo: nil];
            if (target.proxyDelegate != nil){
                [target.proxyDelegate proxyRecievedError:exception InMethod:@"CelsiusToFahrenheit"];
                return;
            }
        }
        NSString *nodeContentValue = [[NSString alloc] initWithString:[[arrayOfWSData objectAtIndex:0] objectForKey:@"nodeContent"]];
        NSString* result = nil;
        if (nodeContentValue !=nil){
            result = [[NSString alloc] initWithString:nodeContentValue];
        }
         if (target.proxyDelegate != nil){
            [target.proxyDelegate proxydidFinishLoadingData:result InMethod:@"CelsiusToFahrenheit"];
            return;
        }
    }
    @catch(NSException *ex){
        if (target.proxyDelegate != nil){
            [target.proxyDelegate proxyRecievedError:ex InMethod:@"CelsiusToFahrenheit"];
            return;
        }
    }
}
@end

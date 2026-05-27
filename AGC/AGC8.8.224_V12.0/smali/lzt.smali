.class final Llzt;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.authenticator.F250AuthenticatorModule$Companion$provideGoogleSignInClientProxy$1"
    c = "F250AuthenticatorModule.kt"
    d = "silentSignIn"
    e = {
        0x21
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Llzu;

.field c:I


# direct methods
.method public constructor <init>(Llzu;Loku;)V
    .locals 0

    iput-object p1, p0, Llzt;->b:Llzu;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llzt;->a:Ljava/lang/Object;

    iget p1, p0, Llzt;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llzt;->c:I

    iget-object p1, p0, Llzt;->b:Llzu;

    invoke-virtual {p1, p0}, Llzu;->c(Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

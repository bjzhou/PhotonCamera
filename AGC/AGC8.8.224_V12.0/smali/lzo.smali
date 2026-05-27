.class final Llzo;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.authenticator.F250AuthenticatorInternal"
    c = "F250AuthenticatorInternal.kt"
    d = "determineAccount"
    e = {
        0x67,
        0x6a,
        0x6b,
        0x75,
        0x7a
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Llzs;

.field e:I

.field f:Llzy;

.field g:Llzs;

.field h:Llzq;

.field i:Loux;


# direct methods
.method public constructor <init>(Llzs;Loku;)V
    .locals 0

    iput-object p1, p0, Llzo;->d:Llzs;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llzo;->c:Ljava/lang/Object;

    iget p1, p0, Llzo;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llzo;->e:I

    iget-object p1, p0, Llzo;->d:Llzs;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Llzs;->a(Llzy;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

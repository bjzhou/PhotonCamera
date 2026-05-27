.class public final Llvx;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.F250AirlockInternal$observeResources$$inlined$map$1$2"
    c = "F250AirlockInternal.kt"
    d = "emit"
    e = {
        0xdf
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field final synthetic c:Lmcc;


# direct methods
.method public constructor <init>(Lmcc;Loku;[B)V
    .locals 0

    iput-object p1, p0, Llvx;->c:Lmcc;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llvx;->a:Ljava/lang/Object;

    iget p1, p0, Llvx;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llvx;->b:I

    iget-object p1, p0, Llvx;->c:Lmcc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lmcc;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

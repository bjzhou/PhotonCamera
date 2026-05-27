.class public final Llvt;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.F250AirlockInternal$logOnFirstAndError$$inlined$map$1$2"
    c = "F250AirlockInternal.kt"
    d = "emit"
    e = {
        0xe2,
        0xdf
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Llvu;

.field d:Ljava/lang/Object;

.field e:Lotu;


# direct methods
.method public constructor <init>(Llvu;Loku;)V
    .locals 0

    iput-object p1, p0, Llvt;->c:Llvu;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llvt;->a:Ljava/lang/Object;

    iget p1, p0, Llvt;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llvt;->b:I

    iget-object p1, p0, Llvt;->c:Llvu;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Llvu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

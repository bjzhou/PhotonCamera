.class final Llwa;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.ResourceDeleter"
    c = "Deleter.kt"
    d = "deleteResource"
    e = {
        0x2d
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Llwc;

.field c:I


# direct methods
.method public constructor <init>(Llwc;Loku;)V
    .locals 0

    iput-object p1, p0, Llwa;->b:Llwc;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llwa;->a:Ljava/lang/Object;

    iget p1, p0, Llwa;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llwa;->c:I

    iget-object p1, p0, Llwa;->b:Llwc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Llwc;->a(Llzy;Llyg;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

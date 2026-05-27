.class final Lmoi;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.async.coroutines.MapConcurrentlyKt$mapConcurrently$2$3"
    c = "MapConcurrently.kt"
    d = "emit"
    e = {
        0x46
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lmoj;

.field c:I

.field d:Lmoj;


# direct methods
.method public constructor <init>(Lmoj;Loku;)V
    .locals 0

    iput-object p1, p0, Lmoi;->b:Lmoj;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmoi;->a:Ljava/lang/Object;

    iget p1, p0, Lmoi;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmoi;->c:I

    iget-object p1, p0, Lmoi;->b:Lmoj;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lmoj;->b(Loka;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

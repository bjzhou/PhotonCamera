.class public final Lorx;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.TimeoutKt"
    c = "Timeout.kt"
    d = "withTimeoutOrNull"
    e = {
        0x64
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Lonk;


# direct methods
.method public constructor <init>(Loku;)V
    .locals 0

    invoke-direct {p0, p1}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lorx;->a:Ljava/lang/Object;

    iget p1, p0, Lorx;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorx;->b:I

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    invoke-static {v0, v1, p1, p0}, Lolp;->Q(JLomo;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

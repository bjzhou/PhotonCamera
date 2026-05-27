.class final Lotq;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.DistinctFlowImpl$collect$2"
    c = "Distinct.kt"
    d = "emit"
    e = {
        0x51
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lotr;

.field c:I


# direct methods
.method public constructor <init>(Lotr;Loku;)V
    .locals 0

    iput-object p1, p0, Lotq;->b:Lotr;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lotq;->a:Ljava/lang/Object;

    iget p1, p0, Lotq;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lotq;->c:I

    iget-object p1, p0, Lotq;->b:Lotr;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lotr;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

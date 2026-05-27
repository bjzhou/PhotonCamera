.class final Lotn;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.CallbackFlowBuilder"
    c = "Builders.kt"
    d = "collectTo"
    e = {
        0x150
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Loto;

.field c:I

.field d:Lotd;


# direct methods
.method public constructor <init>(Loto;Loku;)V
    .locals 0

    iput-object p1, p0, Lotn;->b:Loto;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lotn;->a:Ljava/lang/Object;

    iget p1, p0, Lotn;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lotn;->c:I

    iget-object p1, p0, Lotn;->b:Loto;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lotp;->b(Lotd;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

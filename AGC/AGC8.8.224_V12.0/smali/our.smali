.class final Lour;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.SharedFlowImpl"
    c = "SharedFlow.kt"
    d = "collect$suspendImpl"
    e = {
        0x175,
        0x17c,
        0x17f
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lous;

.field c:I

.field d:Lous;

.field e:Lotu;

.field f:Louu;

.field g:Lora;


# direct methods
.method public constructor <init>(Lous;Loku;)V
    .locals 0

    iput-object p1, p0, Lour;->b:Lous;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lour;->a:Ljava/lang/Object;

    iget p1, p0, Lour;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lour;->c:I

    iget-object p1, p0, Lour;->b:Lous;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lous;->d(Lous;Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

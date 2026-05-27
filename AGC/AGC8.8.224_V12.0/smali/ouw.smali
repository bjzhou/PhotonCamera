.class final Louw;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.StateFlowImpl"
    c = "StateFlow.kt"
    d = "collect"
    e = {
        0x182,
        0x18e,
        0x193
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Loux;

.field d:I

.field e:Loux;

.field f:Lotu;

.field g:Louz;

.field h:Lora;


# direct methods
.method public constructor <init>(Loux;Loku;)V
    .locals 0

    iput-object p1, p0, Louw;->c:Loux;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Louw;->b:Ljava/lang/Object;

    iget p1, p0, Louw;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Louw;->d:I

    iget-object p1, p0, Louw;->c:Loux;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Loux;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

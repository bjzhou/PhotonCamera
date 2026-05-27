.class public final Lotv;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3"
    c = "Builders.kt"
    d = "collect"
    e = {
        0x73
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lotw;

.field d:Lotu;

.field e:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lotw;Loku;)V
    .locals 0

    iput-object p1, p0, Lotv;->c:Lotw;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lotv;->a:Ljava/lang/Object;

    iget p1, p0, Lotv;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lotv;->b:I

    iget-object p1, p0, Lotv;->c:Lotw;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lotw;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

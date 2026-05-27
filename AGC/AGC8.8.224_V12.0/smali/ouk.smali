.class public final Louk;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2"
    c = "Reduce.kt"
    d = "emit"
    e = {
        0x8e
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Ljava/lang/Object;

.field final synthetic d:Lmcc;

.field public e:Lmcc;


# direct methods
.method public constructor <init>(Lmcc;Loku;[B)V
    .locals 0

    iput-object p1, p0, Louk;->d:Lmcc;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Louk;->a:Ljava/lang/Object;

    iget p1, p0, Louk;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Louk;->b:I

    iget-object p1, p0, Louk;->d:Lmcc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lmcc;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

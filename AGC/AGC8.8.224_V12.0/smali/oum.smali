.class public final Loum;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2"
    c = "Transform.kt"
    d = "emit"
    e = {
        0xdf,
        0xe0
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Lotu;

.field final synthetic e:Lmcc;


# direct methods
.method public constructor <init>(Lmcc;Loku;[B)V
    .locals 0

    iput-object p1, p0, Loum;->e:Lmcc;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Loum;->a:Ljava/lang/Object;

    iget p1, p0, Loum;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Loum;->b:I

    iget-object p1, p0, Loum;->e:Lmcc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lmcc;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

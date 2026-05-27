.class public final Lfvi;
.super Ljava/lang/Object;

# interfaces
.implements Lhrn;


# instance fields
.field final synthetic a:Ljvk;

.field final synthetic b:[Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljvk;[Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lfvi;->a:Ljvk;

    iput-object p2, p0, Lfvi;->b:[Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final s()V
    .locals 0

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lfvi;->a:Ljvk;

    iget-object v1, p0, Lfvi;->b:[Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Landroid/graphics/RectF;FLhrg;)V
    .locals 2

    iget-object p1, p0, Lfvi;->a:Ljvk;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Float;

    sget-object v1, Lhrg;->c:Lhrg;

    if-ne p3, v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p3

    invoke-virtual {p1, v0}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void
.end method

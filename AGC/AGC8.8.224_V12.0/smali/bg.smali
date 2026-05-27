.class Lbg;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ldl;

.field public final b:Lexj;


# direct methods
.method public constructor <init>(Ldl;Lexj;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbg;->a:Ldl;

    iput-object p2, p0, Lbg;->b:Lexj;

    return-void
.end method


# virtual methods
.method final b()V
    .locals 3

    iget-object v0, p0, Lbg;->a:Ldl;

    iget-object v1, p0, Lbg;->b:Lexj;

    iget-object v2, v0, Ldl;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldl;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ldl;->a()V

    :cond_0
    return-void
.end method

.method final c()Z
    .locals 5

    iget-object v0, p0, Lbg;->a:Ldl;

    iget-object v0, v0, Ldl;->a:Lbw;

    iget-object v0, v0, Lbw;->N:Landroid/view/View;

    invoke-static {v0}, Ldp;->t(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lbg;->a:Ldl;

    iget v1, v1, Ldl;->e:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

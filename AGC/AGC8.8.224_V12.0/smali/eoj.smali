.class final Leoj;
.super Ljava/lang/Object;

# interfaces
.implements Lmlb;


# instance fields
.field final synthetic a:Lbgj;

.field final synthetic b:Lbgj;

.field final synthetic c:Leom;


# direct methods
.method public constructor <init>(Leom;Lbgj;Lbgj;)V
    .locals 0

    iput-object p1, p0, Leoj;->c:Leom;

    iput-object p2, p0, Leoj;->a:Lbgj;

    iput-object p3, p0, Leoj;->b:Lbgj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lmle;)V
    .locals 4

    iget-object v0, p1, Lmle;->h:Lmlg;

    invoke-static {v0}, Lnom;->h(Landroid/view/View;)V

    iget-object p1, p1, Lmle;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Leqg;->c:Leqg;

    move-object v1, p1

    check-cast v1, Leqg;

    invoke-virtual {v1, v0}, Leqg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leoj;->c:Leom;

    iget-object v0, v0, Leom;->e:Ljew;

    const-string v1, "lasagna_edu_action"

    invoke-virtual {v0, v1}, Ljew;->Z(Ljava/lang/String;)I

    iget-object v0, p0, Leoj;->a:Lbgj;

    invoke-virtual {v0}, Lbgj;->k()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leoj;->c:Leom;

    iget-object v0, v0, Leom;->e:Ljew;

    const-string v1, "lasagna_edu_landscape"

    invoke-virtual {v0, v1}, Ljew;->Z(Ljava/lang/String;)I

    iget-object v0, p0, Leoj;->b:Lbgj;

    invoke-virtual {v0}, Lbgj;->k()V

    :goto_0
    iget-object v0, p0, Leoj;->c:Leom;

    const/4 v1, 0x1

    :try_start_0
    iget-boolean v2, v0, Leom;->c:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Leom;->b:Leqg;

    move-object v3, p1

    check-cast v3, Leqg;

    invoke-virtual {v3, v2}, Leqg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Leqg;

    iput-object p1, v0, Leom;->d:Leqg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-boolean v1, v0, Leom;->c:Z

    iget-object p1, p0, Leoj;->c:Leom;

    iget-object p1, p1, Leom;->h:Lhsb;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput v0, p1, Lhsb;->d:I

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, v0, Leom;->c:Z

    throw p1
.end method

.method public final b(Lmle;)V
    .locals 1

    iget-object p1, p1, Lmle;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Leqg;->c:Leqg;

    check-cast p1, Leqg;

    invoke-virtual {p1, v0}, Leqg;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Leoj;->a:Lbgj;

    invoke-virtual {p1}, Lbgj;->i()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Leoj;->b:Lbgj;

    invoke-virtual {p1}, Lbgj;->i()V

    :goto_0
    iget-object p1, p0, Leoj;->c:Leom;

    invoke-virtual {p1}, Leom;->a()V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

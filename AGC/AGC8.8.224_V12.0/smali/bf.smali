.class final Lbf;
.super Lbg;


# instance fields
.field private final c:Z

.field private d:Z

.field private e:Lbby;


# direct methods
.method public constructor <init>(Ldl;Lexj;Z[B)V
    .locals 0

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p4}, Lbg;-><init>(Ldl;Lexj;[B)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbf;->d:Z

    iput-boolean p3, p0, Lbf;->c:Z

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)Lbby;
    .locals 4

    iget-boolean v0, p0, Lbf;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbg;->a:Ldl;

    iget-object v1, v0, Ldl;->a:Lbw;

    iget v0, v0, Ldl;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lbf;->c:Z

    invoke-static {p1, v1, v0, v2}, Ld;->f(Landroid/content/Context;Lbw;ZZ)Lbby;

    move-result-object p1

    iput-object p1, p0, Lbf;->e:Lbby;

    iput-boolean v3, p0, Lbf;->d:Z

    return-object p1

    :cond_1
    iget-object p1, p0, Lbf;->e:Lbby;

    return-object p1
.end method

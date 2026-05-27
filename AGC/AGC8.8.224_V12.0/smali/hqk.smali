.class public final Lhqk;
.super Ljava/lang/Object;


# instance fields
.field public a:Lj$/time/Duration;

.field public b:Landroid/view/ViewGroup;

.field public c:Landroid/view/View;

.field public d:Z

.field public e:Lgeh;

.field public f:Lell;

.field public g:Lfbz;

.field public h:I

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhqk;->c:Landroid/view/View;

    sget-object v0, Lhck;->d:Lhck;

    iput-object v0, p0, Lhqk;->i:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhqk;->d:Z

    const/4 v0, 0x1

    iput v0, p0, Lhqk;->h:I

    return-void
.end method


# virtual methods
.method public final a()Lhql;
    .locals 10

    iget-object v0, p0, Lhqk;->f:Lell;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v7, p0, Lhqk;->d:Z

    if-eqz v7, :cond_0

    iget-object v0, p0, Lhqk;->c:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lhqk;->e:Lgeh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lhqk;->g:Lfbz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhqk;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhqk;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    new-instance v0, Lhql;

    iget-object v2, p0, Lhqk;->a:Lj$/time/Duration;

    iget-object v3, p0, Lhqk;->b:Landroid/view/ViewGroup;

    iget-object v4, p0, Lhqk;->c:Landroid/view/View;

    iget-object v5, p0, Lhqk;->i:Ljava/lang/Runnable;

    iget v6, p0, Lhqk;->h:I

    iget-object v8, p0, Lhqk;->e:Lgeh;

    iget-object v9, p0, Lhqk;->g:Lfbz;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lhql;-><init>(Lj$/time/Duration;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Runnable;IZLgeh;Lfbz;)V

    new-instance v1, Lhqn;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lhqn;-><init>(Lhqk;Lhql;I)V

    iput-object v1, v0, Lhql;->c:Ljava/lang/Runnable;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    throw v0
.end method

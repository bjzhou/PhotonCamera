.class public final Ljfg;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljfh;

.field public b:Ljfh;

.field public c:Ljfb;

.field public d:[Ljca;

.field public e:I

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lhck;->m:Lhck;

    iput-object v0, p0, Ljfg;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()Ldja;
    .locals 10

    iget-object v0, p0, Ljfg;->a:Ljfh;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Must set register function"

    invoke-static {v0, v3}, Ljhp;->T(ZLjava/lang/Object;)V

    iget-object v0, p0, Ljfg;->b:Ljfh;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "Must set unregister function"

    invoke-static {v0, v3}, Ljhp;->T(ZLjava/lang/Object;)V

    iget-object v0, p0, Ljfg;->c:Ljfb;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v0, "Must set holder"

    invoke-static {v1, v0}, Ljhp;->T(ZLjava/lang/Object;)V

    iget-object v0, p0, Ljfg;->c:Ljfb;

    iget-object v0, v0, Ljfb;->b:Ljez;

    const-string v1, "Key must not be null"

    invoke-static {v0, v1}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ldja;

    new-instance v3, Lkxq;

    iget-object v1, p0, Ljfg;->c:Ljfb;

    iget-object v2, p0, Ljfg;->d:[Ljca;

    iget v4, p0, Ljfg;->e:I

    invoke-direct {v3, p0, v1, v2, v4}, Lkxq;-><init>(Ljfg;Ljfb;[Ljca;I)V

    new-instance v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v4, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljfg;)V

    iget-object v5, p0, Ljfg;->f:Ljava/lang/Runnable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ldja;-><init>(Lkxq;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/Runnable;[B[B[B[B)V

    return-object v0
.end method

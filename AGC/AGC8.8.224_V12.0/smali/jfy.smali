.class public final Ljfy;
.super Ljava/lang/Object;

# interfaces
.implements Ljfw;


# instance fields
.field final synthetic a:Ljgb;


# direct methods
.method public constructor <init>(Ljgb;)V
    .locals 0

    iput-object p1, p0, Ljfy;->a:Ljgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljby;)V
    .locals 2

    invoke-virtual {p1}, Ljby;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ljfy;->a:Ljgb;

    move-object v0, p1

    check-cast v0, Ljgm;

    iget-object v0, v0, Ljgm;->s:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljgb;->q(Ljgu;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Ljfy;->a:Ljgb;

    iget-object v0, v0, Ljgb;->q:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->t(Ljby;)V

    :cond_1
    return-void
.end method

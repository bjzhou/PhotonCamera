.class public final Lkjs;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/util/Map;Lkju;Lrb;I)V
    .locals 0

    iput p4, p0, Lkjs;->d:I

    iput-object p1, p0, Lkjs;->a:Ljava/lang/Object;

    iput-object p2, p0, Lkjs;->b:Ljava/lang/Object;

    iput-object p3, p0, Lkjs;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lklj;Lcfl;Landroidx/wear/ambient/AmbientDelegate;I[B)V
    .locals 0

    iput p4, p0, Lkjs;->d:I

    iput-object p1, p0, Lkjs;->a:Ljava/lang/Object;

    iput-object p2, p0, Lkjs;->c:Ljava/lang/Object;

    iput-object p3, p0, Lkjs;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic bn(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lkjs;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lkjs;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lklj;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lmqp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkjs;->a:Ljava/lang/Object;

    iget-object v1, p0, Lkjs;->b:Ljava/lang/Object;

    iget-object v2, p0, Lkjs;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrj;

    if-eqz v0, :cond_0

    iget v1, v0, Lrj;->a:I

    invoke-static {v1}, Lsc;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting surface for external CameraStream, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", surface="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v0, v0, Lrj;->a:I

    invoke-virtual {p1}, Lmqp;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-interface {v2, v0, p1}, Lrb;->c(ILandroid/view/Surface;)V

    :cond_0
    return-void

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkll;

    iget-object v2, p0, Lkjs;->c:Ljava/lang/Object;

    check-cast v2, Lcfl;

    invoke-virtual {v2, v1}, Lcfl;->d(Lkll;)Lcfk;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkjs;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v1, Lbkc;

    iget-object v1, v1, Lbkc;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlex/gcam/DirtyLensHistory;

    iget-wide v2, v1, Lcom/google/googlex/gcam/DirtyLensHistory;->a:J

    invoke-static {v2, v3, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->DirtyLensHistory_Reset(JLcom/google/googlex/gcam/DirtyLensHistory;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcfk;

    iget-object v2, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v2, Lbkc;

    invoke-virtual {v2}, Lbkc;->d()Lcfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljwi;->bn(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object p1, v0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    sget-object v0, Ldgs;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->f()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

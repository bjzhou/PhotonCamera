.class public final Leh;
.super Ljava/lang/Object;

# interfaces
.implements Lpu;


# instance fields
.field final synthetic a:Lpl;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lbz;I)V
    .locals 0

    iput p2, p0, Leh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leh;->a:Lpl;

    return-void
.end method

.method public constructor <init>(Lei;I)V
    .locals 0

    iput p2, p0, Leh;->b:I

    iput-object p1, p0, Leh;->a:Lpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpl;I)V
    .locals 0

    iput p2, p0, Leh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leh;->a:Lpl;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget v0, p0, Leh;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Leh;->a:Lpl;

    invoke-virtual {v0}, Lpl;->getSavedStateRegistry()Laqm;

    move-result-object v1

    const-string v2, "android:support:activity-result"

    invoke-virtual {v1, v2}, Laqm;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lpl;->h:Lqa;

    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Leh;->a:Lpl;

    check-cast v0, Lbz;

    iget-object v0, v0, Lbz;->e:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lce;

    iget-object v2, v1, Lce;->e:Lcq;

    check-cast v0, Lcb;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcq;->k(Lce;Lcb;Lbw;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Leh;->a:Lpl;

    check-cast v0, Lei;

    invoke-virtual {v0}, Lei;->j()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->e()V

    iget-object v1, p0, Leh;->a:Lpl;

    invoke-virtual {v1}, Lpl;->getSavedStateRegistry()Laqm;

    move-result-object v1

    const-string v2, "androidx:appcompat"

    invoke-virtual {v1, v2}, Laqm;->a(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {v0}, Lel;->o()V

    return-void

    :cond_0
    const-string v4, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Lqa;->e:Ljava/util/ArrayList;

    const-string v4, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/Random;

    iput-object v4, v0, Lqa;->a:Ljava/util/Random;

    iget-object v4, v0, Lqa;->h:Landroid/os/Bundle;

    const-string v5, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lqa;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lqa;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, v0, Lqa;->h:Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lqa;->b:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lqa;->b(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

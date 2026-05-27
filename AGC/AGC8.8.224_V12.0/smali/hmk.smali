.class public final synthetic Lhmk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhmm;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lhmt;

.field public final synthetic e:Lmqp;


# direct methods
.method public synthetic constructor <init>(Lhmm;ZZLhmt;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhmk;->a:Lhmm;

    iput-boolean p2, p0, Lhmk;->b:Z

    iput-boolean p3, p0, Lhmk;->c:Z

    iput-object p4, p0, Lhmk;->d:Lhmt;

    iput-object p5, p0, Lhmk;->e:Lmqp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lhmk;->a:Lhmm;

    iget-boolean v1, p0, Lhmk;->b:Z

    iget-boolean v2, p0, Lhmk;->c:Z

    iget-object v3, p0, Lhmk;->d:Lhmt;

    iget-object v4, p0, Lhmk;->e:Lmqp;

    iget-boolean v5, v0, Lhmm;->s:Z

    if-nez v5, :cond_7

    iget-boolean v5, v0, Lhmm;->w:Z

    if-nez v5, :cond_7

    iget-boolean v5, v0, Lhmm;->x:Z

    if-nez v5, :cond_7

    iget-boolean v5, v0, Lhmm;->y:Z

    if-nez v5, :cond_7

    iget-object v5, v0, Lhmm;->n:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iget-object v5, v5, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->d:Ljwb;

    check-cast v5, Ljvk;

    iget-object v5, v5, Ljvk;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_7

    :cond_0
    invoke-virtual {v0}, Lhmm;->i()V

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lhmm;->h()V

    :cond_1
    sget-object v1, Lhmt;->a:Lhmt;

    sget-object v1, Lhmu;->a:Lhmu;

    invoke-virtual {v3}, Lhmt;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {v0}, Lhmm;->t()V

    invoke-virtual {v0, v4}, Lhmm;->d(Lmqp;)V

    return-void

    :pswitch_1
    iget-object v1, v0, Lhmm;->a:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmu;

    sget-object v2, Lhmu;->b:Lhmu;

    invoke-virtual {v1, v2}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lhmm;->h:Lhnb;

    invoke-interface {v1}, Lhnb;->e()Lhna;

    move-result-object v1

    iget-object v2, v0, Lhmm;->g:Lhna;

    invoke-virtual {v1, v2}, Lhna;->a(Lhna;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lhmm;->o:Licf;

    invoke-virtual {v0, v1}, Lhmm;->q(Licf;)V

    return-void

    :cond_3
    :goto_0
    iget-object v1, v0, Lhmm;->a:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmu;

    sget-object v2, Lhmu;->a:Lhmu;

    invoke-virtual {v1, v2}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lhmm;->t()V

    invoke-virtual {v0, v4}, Lhmm;->d(Lmqp;)V

    iget-object v1, v0, Lhmm;->a:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmu;

    invoke-virtual {v0, v1}, Lhmm;->p(Lhmu;)V

    return-void

    :pswitch_2
    iget-object v1, v0, Lhmm;->a:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmu;

    sget-object v2, Lhmu;->b:Lhmu;

    invoke-virtual {v1, v2}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget v1, v0, Lhmm;->u:I

    add-int/2addr v1, v2

    iput v1, v0, Lhmm;->u:I

    :cond_4
    iget-object v1, v0, Lhmm;->f:Lhmp;

    iget-boolean v3, v1, Lhmp;->d:Z

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    iput-boolean v2, v1, Lhmp;->d:Z

    iget-object v2, v1, Lhmp;->f:Ljew;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "taxi_entered_smarts_chip"

    invoke-virtual {v2, v3}, Ljew;->Y(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x9

    if-ge v2, v5, :cond_6

    iget-object v5, v1, Lhmp;->f:Ljew;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v3, v6}, Ljew;->ab(Ljava/lang/String;I)V

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_6

    iget-object v2, v1, Lhmp;->b:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lhmp;->c:Lheb;

    invoke-virtual {v1, v2}, Lhdo;->d(Lheb;)V

    :cond_6
    :goto_1
    iget-object v1, v0, Lhmm;->a:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmu;

    invoke-virtual {v0, v1}, Lhmm;->p(Lhmu;)V

    iget-object v1, v0, Lhmm;->a:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmu;

    invoke-virtual {v0, v1}, Lhmm;->r(Lhmu;)V

    :pswitch_3
    invoke-virtual {v0}, Lhmm;->t()V

    invoke-virtual {v0, v4}, Lhmm;->d(Lmqp;)V

    return-void

    :pswitch_4
    invoke-virtual {v0}, Lhmm;->e()V

    return-void

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

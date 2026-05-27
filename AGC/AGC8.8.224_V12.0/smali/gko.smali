.class public final synthetic Lgko;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lgkq;Ljava/util/Map;Lken;Ljava/util/concurrent/Executor;I)V
    .locals 0

    iput p5, p0, Lgko;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgko;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgko;->b:Ljava/lang/Object;

    iput-object p3, p0, Lgko;->c:Ljava/lang/Object;

    iput-object p4, p0, Lgko;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Licj;Lgzn;Ljwb;Lgeh;I)V
    .locals 0

    iput p5, p0, Lgko;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgko;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgko;->c:Ljava/lang/Object;

    iput-object p3, p0, Lgko;->d:Ljava/lang/Object;

    iput-object p4, p0, Lgko;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljvs;Ljvk;I)V
    .locals 0

    iput p5, p0, Lgko;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgko;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgko;->d:Ljava/lang/Object;

    iput-object p3, p0, Lgko;->c:Ljava/lang/Object;

    iput-object p4, p0, Lgko;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lgko;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgko;->b:Ljava/lang/Object;

    iget-object v1, p0, Lgko;->d:Ljava/lang/Object;

    iget-object v2, p0, Lgko;->c:Ljava/lang/Object;

    iget-object v3, p0, Lgko;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object v4, Ldhg;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lgko;->b:Ljava/lang/Object;

    iget-object v1, p0, Lgko;->c:Ljava/lang/Object;

    iget-object v2, p0, Lgko;->d:Ljava/lang/Object;

    iget-object v3, p0, Lgko;->a:Ljava/lang/Object;

    check-cast p1, Ldbw;

    invoke-virtual {p1}, Ldbw;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast v0, Licj;

    invoke-virtual {v0}, Licj;->b()V

    return-void

    :cond_0
    sget-object p1, Lgzd;->s:Lgzu;

    invoke-interface {v1, p1}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object p1

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v4, "off"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lgzd;->z:Lgzr;

    invoke-interface {v1, p1}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object p1

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lika;

    invoke-static {p1}, Legw;->d(Lika;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v3}, Lgeh;->E()Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast v0, Licj;

    invoke-virtual {v0}, Licj;->c()V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lgko;->a:Ljava/lang/Object;

    iget-object v1, p0, Lgko;->b:Ljava/lang/Object;

    iget-object v2, p0, Lgko;->c:Ljava/lang/Object;

    iget-object v3, p0, Lgko;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast v0, Lgkq;

    invoke-virtual {v0, v1, v2, v3, p1}, Lgkq;->s(Ljava/util/Map;Lken;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    return-void

    :cond_2
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object v4, Ldhg;->b:Ljava/lang/String;

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    check-cast v3, Ljvk;

    invoke-virtual {v3, v4}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

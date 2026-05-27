.class final Lun;
.super Ljava/lang/Object;

# interfaces
.implements Lotu;


# instance fields
.field final synthetic a:Lopu;

.field final synthetic b:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate;Lopu;[B)V
    .locals 0

    iput-object p1, p0, Lun;->b:Landroidx/wear/ambient/AmbientDelegate;

    iput-object p2, p0, Lun;->a:Lopu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljo;

    instance-of p2, p1, Lto;

    if-nez p2, :cond_0

    instance-of p1, p1, Ltn;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lun;->b:Landroidx/wear/ambient/AmbientDelegate;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast p1, Lvr;

    invoke-virtual {p1}, Lvr;->b()V

    iget-object p1, p0, Lun;->a:Lopu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lopu;->da()Lola;

    move-result-object p2

    sget-object v0, Lora;->c:Lokv;

    invoke-interface {p2, v0}, Lola;->get(Loky;)Lokx;

    move-result-object p2

    check-cast p2, Lora;

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lora;->r(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

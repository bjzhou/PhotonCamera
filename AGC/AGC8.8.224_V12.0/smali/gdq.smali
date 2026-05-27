.class public final synthetic Lgdq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lgdv;

.field public final synthetic b:Lgej;

.field public final synthetic c:Lgec;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lgdv;Lgej;Lgec;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdq;->a:Lgdv;

    iput-object p2, p0, Lgdq;->b:Lgej;

    iput-object p3, p0, Lgdq;->c:Lgec;

    iput p4, p0, Lgdq;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lgdq;->a:Lgdv;

    iget-object v1, p0, Lgdq;->b:Lgej;

    iget-object v2, p0, Lgdq;->c:Lgec;

    iget v3, p0, Lgdq;->d:I

    check-cast p1, Lgei;

    invoke-interface {p1}, Lgei;->i()Ljwb;

    move-result-object p1

    invoke-interface {p1, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p1, v0, Lgdv;->j:Lgel;

    invoke-interface {p1, v1, v2, v3}, Lgel;->bU(Lgej;Lgec;I)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

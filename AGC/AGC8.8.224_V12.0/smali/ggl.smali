.class public final synthetic Lggl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Layp;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lggl;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggl;->a:Ljava/lang/Object;

    iput-object p2, p0, Lggl;->c:Ljava/lang/Object;

    iput-object p3, p0, Lggl;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lggm;Lker;Lkfh;I)V
    .locals 0

    iput p4, p0, Lggl;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggl;->a:Ljava/lang/Object;

    iput-object p2, p0, Lggl;->b:Ljava/lang/Object;

    iput-object p3, p0, Lggl;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lggl;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lggl;->a:Ljava/lang/Object;

    iget-object v1, p0, Lggl;->c:Ljava/lang/Object;

    iget-object v2, p0, Lggl;->b:Ljava/lang/Object;

    check-cast v0, Layp;

    iget-object v3, v0, Layp;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->C()Lbcz;

    move-result-object v3

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lbcz;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Layp;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v0

    invoke-interface {v0, v2}, Lbck;->a(Ljava/lang/String;)Lbcj;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lggl;->a:Ljava/lang/Object;

    iget-object v1, p0, Lggl;->b:Ljava/lang/Object;

    iget-object v2, p0, Lggl;->c:Ljava/lang/Object;

    check-cast v2, Lkfh;

    check-cast v0, Lggm;

    invoke-virtual {v0, v1, v2}, Lggm;->b(Lker;Lkfh;)Lfub;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

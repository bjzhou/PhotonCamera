.class public final Lgtz;
.super Ljava/lang/Object;

# interfaces
.implements Lked;


# instance fields
.field final synthetic a:Lfqj;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lfqj;I)V
    .locals 0

    iput p2, p0, Lgtz;->b:I

    iput-object p1, p0, Lgtz;->a:Lfqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Lkhr;
    .locals 1

    iget v0, p0, Lgtz;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lgtz;->a:Lfqj;

    invoke-interface {p1, v0}, Lfqj;->a(Ljava/util/List;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkhr;

    return-object p1

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lgtz;->a:Lfqj;

    invoke-interface {p1, v0}, Lfqj;->a(Ljava/util/List;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkhr;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

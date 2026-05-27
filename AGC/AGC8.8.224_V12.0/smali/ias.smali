.class public final synthetic Lias;
.super Ljava/lang/Object;

# interfaces
.implements Liij;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcie;I)V
    .locals 0

    iput p2, p0, Lias;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lias;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liau;I)V
    .locals 0

    iput p2, p0, Lias;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lias;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lika;)V
    .locals 1

    iget v0, p0, Lias;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lias;->a:Ljava/lang/Object;

    check-cast v0, Lcie;

    invoke-virtual {v0, p1}, Lcie;->q(Lika;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lias;->a:Ljava/lang/Object;

    check-cast v0, Liau;

    iget-object v0, v0, Liau;->c:Libh;

    invoke-interface {v0, p1}, Libh;->p(Lika;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Leoi;
.super Ljava/lang/Object;

# interfaces
.implements Lmli;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput p2, p0, Leoi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leoi;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lmle;I)V
    .locals 2

    iget v0, p0, Leoi;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Leoi;->a:Ljava/util/List;

    sget-object v1, Ldan;->a:Ljava/lang/Integer;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lmle;->c(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Leoi;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leol;

    iget-object v1, v1, Leol;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lmle;->c(Ljava/lang/CharSequence;)V

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leol;

    iget-object p2, p2, Leol;->a:Leqg;

    iput-object p2, p1, Lmle;->a:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

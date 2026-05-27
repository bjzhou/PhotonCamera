.class public final synthetic Llym;
.super Ljava/lang/Object;

# interfaces
.implements Lomk;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Llwu;I)V
    .locals 0

    iput p2, p0, Llym;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llym;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llys;I)V
    .locals 0

    iput p2, p0, Llym;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llym;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Llym;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llym;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    check-cast v0, Llys;

    invoke-virtual {v0, p1}, Llys;->g(Ljava/util/HashMap;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_0
    iget-object v0, p0, Llym;->a:Ljava/lang/Object;

    check-cast p1, Loku;

    check-cast v0, Llyl;

    invoke-static {v0, p1}, Llyl;->d(Llyl;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Llym;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    check-cast v0, Llwu;

    invoke-virtual {v0, p1}, Llwu;->d(Ljava/util/HashMap;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_2
    iget-object v0, p0, Llym;->a:Ljava/lang/Object;

    check-cast p1, Loku;

    check-cast v0, Llyl;

    invoke-static {v0, p1}, Llyl;->b(Llyl;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Loua;
.super Ljava/lang/Object;

# interfaces
.implements Lotu;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Laea;I)V
    .locals 0

    iput p2, p0, Loua;->b:I

    iput-object p1, p0, Loua;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;I)V
    .locals 0

    iput p2, p0, Loua;->b:I

    iput-object p1, p0, Loua;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 0

    iget p2, p0, Loua;->b:I

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, Loua;->a:Ljava/lang/Object;

    invoke-interface {p2, p1}, Laea;->a(Ljava/lang/Object;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_0
    iget-object p2, p0, Loua;->a:Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

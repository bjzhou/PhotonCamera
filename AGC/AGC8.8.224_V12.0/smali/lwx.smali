.class public final synthetic Llwx;
.super Ljava/lang/Object;

# interfaces
.implements Lomk;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Llwp;Ljava/util/List;Llul;I)V
    .locals 0

    iput p4, p0, Llwx;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llwx;->b:Ljava/lang/Object;

    iput-object p2, p0, Llwx;->c:Ljava/lang/Object;

    iput-object p3, p0, Llwx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llwy;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    iput p4, p0, Llwx;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llwx;->a:Ljava/lang/Object;

    iput-object p2, p0, Llwx;->b:Ljava/lang/Object;

    iput-object p3, p0, Llwx;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llzn;Llyf;Llwq;I)V
    .locals 0

    iput p4, p0, Llwx;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llwx;->c:Ljava/lang/Object;

    iput-object p2, p0, Llwx;->b:Ljava/lang/Object;

    iput-object p3, p0, Llwx;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Llwx;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llwx;->c:Ljava/lang/Object;

    iget-object v1, p0, Llwx;->b:Ljava/lang/Object;

    iget-object v2, p0, Llwx;->a:Ljava/lang/Object;

    check-cast p1, Loku;

    check-cast v2, Llwq;

    check-cast v1, Llyf;

    check-cast v0, Llyz;

    invoke-static {v0, v1, v2, p1}, Llyz;->d(Llyz;Llyf;Llwq;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Llwx;->b:Ljava/lang/Object;

    iget-object v1, p0, Llwx;->c:Ljava/lang/Object;

    iget-object v2, p0, Llwx;->a:Ljava/lang/Object;

    check-cast p1, Loku;

    check-cast v2, Llul;

    check-cast v0, Llwh;

    invoke-static {v0, v1, v2, p1}, Llwh;->b(Llwh;Ljava/util/List;Llul;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Llwx;->a:Ljava/lang/Object;

    iget-object v1, p0, Llwx;->b:Ljava/lang/Object;

    iget-object v2, p0, Llwx;->c:Ljava/lang/Object;

    check-cast p1, Loku;

    check-cast v0, Llww;

    invoke-static {v0, v1, v2, p1}, Llww;->b(Llww;Ljava/util/List;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lawi;
.super Lonf;

# interfaces
.implements Lolz;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lawk;Laea;I)V
    .locals 0

    iput p3, p0, Lawi;->c:I

    iput-object p1, p0, Lawi;->a:Ljava/lang/Object;

    iput-object p2, p0, Lawi;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lmaf;Llwq;I)V
    .locals 0

    iput p3, p0, Lawi;->c:I

    iput-object p1, p0, Lawi;->a:Ljava/lang/Object;

    iput-object p2, p0, Lawi;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lotj;Landroidx/wear/ambient/AmbientDelegate;I[B)V
    .locals 0

    iput p3, p0, Lawi;->c:I

    iput-object p1, p0, Lawi;->a:Ljava/lang/Object;

    iput-object p2, p0, Lawi;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lawi;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lawi;->a:Ljava/lang/Object;

    check-cast v0, Lmaf;

    iget-object v0, v0, Lmaf;->b:Ljava/lang/Object;

    iget-object v1, p0, Lawi;->b:Ljava/lang/Object;

    check-cast v1, Llwq;

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v0, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->s(Llwq;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lawi;->a:Ljava/lang/Object;

    new-instance v1, Lue;

    iget-object v2, p0, Lawi;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/wear/ambient/AmbientDelegate;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lue;-><init>(Landroidx/wear/ambient/AmbientDelegate;[B)V

    invoke-interface {v0, v1}, Lotj;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Losw;->b(Ljava/lang/Object;)Z

    sget-object v0, Lojk;->a:Lojk;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lawi;->a:Ljava/lang/Object;

    check-cast v0, Lawk;

    iget-object v0, v0, Lawk;->a:Lawo;

    iget-object v1, p0, Lawi;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lawo;->b(Laea;)V

    sget-object v0, Lojk;->a:Lojk;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

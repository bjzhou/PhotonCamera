.class public final Lawu;
.super Lonf;

# interfaces
.implements Lomk;


# static fields
.field public static final a:Lawu;

.field public static final b:Lawu;

.field public static final c:Lawu;

.field public static final d:Lawu;

.field public static final e:Lawu;

.field public static final f:Lawu;

.field public static final g:Lawu;

.field public static final h:Lawu;

.field public static final i:Lawu;

.field public static final j:Lawu;


# instance fields
.field private final synthetic k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lawu;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lawu;-><init>(I)V

    sput-object v0, Lawu;->j:Lawu;

    new-instance v0, Lawu;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lawu;-><init>(I)V

    sput-object v0, Lawu;->i:Lawu;

    new-instance v0, Lawu;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lawu;-><init>(I)V

    sput-object v0, Lawu;->h:Lawu;

    new-instance v0, Lawu;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lawu;-><init>(I)V

    sput-object v0, Lawu;->g:Lawu;

    new-instance v0, Lawu;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lawu;-><init>(I)V

    sput-object v0, Lawu;->f:Lawu;

    new-instance v0, Lawu;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lawu;-><init>(I)V

    sput-object v0, Lawu;->e:Lawu;

    new-instance v0, Lawu;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lawu;-><init>(I)V

    sput-object v0, Lawu;->d:Lawu;

    new-instance v0, Lawu;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lawu;-><init>(I)V

    sput-object v0, Lawu;->c:Lawu;

    new-instance v0, Lawu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lawu;-><init>(I)V

    sput-object v0, Lawu;->b:Lawu;

    new-instance v0, Lawu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lawu;-><init>(I)V

    sput-object v0, Lawu;->a:Lawu;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lawu;->k:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lawu;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1

    :pswitch_0
    check-cast p1, Lokx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Loqs;

    if-eqz v0, :cond_0

    check-cast p1, Loqs;

    return-object p1

    :cond_0
    return-object v1

    :pswitch_1
    check-cast p1, Lokx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lopq;

    if-eqz v0, :cond_1

    check-cast p1, Lopq;

    return-object p1

    :cond_1
    return-object v1

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1

    :pswitch_3
    check-cast p1, Llul;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Llul;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-nez p1, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Lalz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Laln;

    invoke-direct {p1}, Laln;-><init>()V

    return-object p1

    :pswitch_8
    check-cast p1, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v0

    if-eq v0, v3, :cond_8

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    :cond_8
    const/4 v2, 0x1

    :cond_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

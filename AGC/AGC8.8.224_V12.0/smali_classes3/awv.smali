.class public final Lawv;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lawv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lawv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Lawl;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_0

    new-instance p0, Lawl;

    sget-object p1, Lojx;->a:Lojx;

    invoke-direct {p0, p1}, Lawl;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_0
    new-instance v0, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {v0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    invoke-static {p1}, Landroidx/wear/ambient/SharedLibraryVersion;->a(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result p1

    :try_start_0
    iput p1, v0, Landroidx/window/sidecar/SidecarDeviceState;->posture:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-class v1, Landroidx/window/sidecar/SidecarDeviceState;

    const-string v2, "setPosture"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    invoke-static {p0}, Landroidx/wear/ambient/SharedLibraryVersion;->b(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lawv;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lavw;

    invoke-direct {v2, v1}, Lavw;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lawu;->a:Lawu;

    const-string v4, "Type must be either TYPE_FOLD or TYPE_HINGE"

    invoke-virtual {v2, v4, v3}, Lavv;->a(Ljava/lang/String;Lomk;)Lavv;

    move-result-object v2

    sget-object v3, Lawu;->c:Lawu;

    const-string v4, "Feature bounds must not be 0"

    invoke-virtual {v2, v4, v3}, Lavv;->a(Ljava/lang/String;Lomk;)Lavv;

    move-result-object v2

    sget-object v3, Lawu;->d:Lawu;

    const-string v4, "TYPE_FOLD must have 0 area"

    invoke-virtual {v2, v4, v3}, Lavv;->a(Ljava/lang/String;Lomk;)Lavv;

    move-result-object v2

    sget-object v3, Lawu;->e:Lawu;

    const-string v4, "Feature be pinned to either left or top"

    invoke-virtual {v2, v4, v3}, Lavv;->a(Ljava/lang/String;Lomk;)Lavv;

    move-result-object v2

    invoke-virtual {v2}, Lavv;->b()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    check-cast v2, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-virtual {v2}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    sget-object v2, Lawd;->b:Lawd;

    goto :goto_2

    :pswitch_1
    sget-object v2, Lawd;->a:Lawd;

    :goto_2
    invoke-static {v0}, Landroidx/wear/ambient/SharedLibraryVersion;->a(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    :pswitch_2
    sget-object v3, Lawc;->a:Lawc;

    goto :goto_3

    :pswitch_3
    sget-object v3, Lawc;->b:Lawc;

    :goto_3
    new-instance v4, Lawe;

    new-instance v5, Lavo;

    invoke-virtual {v1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v1}, Lavo;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v4, v5, v2, v3}, Lawe;-><init>(Lavo;Lawd;Lawc;)V

    move-object v3, v4

    :goto_4
    if-eqz v3, :cond_1

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p0, Lawl;

    invoke-direct {p0, p1}, Lawl;-><init>(Ljava/util/List;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.class public final Lowj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lowg;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ljava/lang/Throwable;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lowj;->b(Ljava/lang/Class;I)I

    move-result v0

    sput v0, Lowj;->b:I

    :try_start_0
    sget-boolean v0, Lowk;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Loxj;->a:Loxj;

    goto :goto_0

    :cond_0
    sget-object v0, Lowb;->a:Lowb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v0, Loxj;->a:Loxj;

    :goto_0
    sput-object v0, Lowj;->a:Lowg;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lomk;
    .locals 8

    sget-object v0, Lawu;->j:Lawu;

    sget v1, Lowj;->b:I

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lowj;->b(Ljava/lang/Class;I)I

    move-result v3

    if-eq v1, v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-instance v1, Lndg;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Lndg;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, p0

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, p0

    if-le v3, v4, :cond_1

    invoke-static {p0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    invoke-static {p0}, Lljr;->at([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    aget-object v5, v3, v2

    const-class v7, Ljava/lang/String;

    invoke-static {v5, v7}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    aget-object v3, v3, v4

    const-class v5, Ljava/lang/Throwable;

    invoke-static {v3, v5}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v6, Lawq;

    const/16 v3, 0xa

    invoke-direct {v6, v1, v3}, Lawq;-><init>(Ljava/lang/reflect/Constructor;I)V

    goto :goto_0

    :pswitch_1
    aget-object v3, v3, v2

    const-class v5, Ljava/lang/Throwable;

    invoke-static {v3, v5}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v6, Lawq;

    const/16 v3, 0xb

    invoke-direct {v6, v1, v3}, Lawq;-><init>(Ljava/lang/reflect/Constructor;I)V

    goto :goto_0

    :cond_3
    const-class v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v6, Lawq;

    const/16 v3, 0xc

    invoke-direct {v6, v1, v3}, Lawq;-><init>(Ljava/lang/reflect/Constructor;I)V

    goto :goto_0

    :pswitch_2
    new-instance v6, Lawq;

    const/16 v3, 0xd

    invoke-direct {v6, v1, v3}, Lawq;-><init>(Ljava/lang/reflect/Constructor;I)V

    :cond_4
    :goto_0
    if-eqz v6, :cond_2

    return-object v6

    :cond_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final b(Ljava/lang/Class;I)I
    .locals 7

    invoke-static {p0}, Lonl;->a(Ljava/lang/Class;)Lonx;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v1, v5

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    instance-of v0, p0, Loje;

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    move-object p0, p1

    :cond_3
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

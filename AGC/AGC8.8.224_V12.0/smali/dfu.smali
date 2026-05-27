.class public final synthetic Ldfu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic a:Ldfu;

.field public static final synthetic b:Ldfu;

.field public static final synthetic c:Ldfu;


# instance fields
.field private final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ldfu;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ldfu;-><init>(I)V

    sput-object v0, Ldfu;->c:Ldfu;

    new-instance v0, Ldfu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ldfu;-><init>(I)V

    sput-object v0, Ldfu;->b:Ldfu;

    new-instance v0, Ldfu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldfu;-><init>(I)V

    sput-object v0, Ldfu;->a:Ldfu;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ldfu;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ldfu;->d:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lkoj;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lddd;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Landroid/graphics/Rect;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

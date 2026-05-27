.class public final synthetic Llig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Llig;

.field public static final synthetic b:Llig;

.field public static final synthetic c:Llig;


# instance fields
.field private final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Llig;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Llig;-><init>(I)V

    sput-object v0, Llig;->c:Llig;

    new-instance v0, Llig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Llig;-><init>(I)V

    sput-object v0, Llig;->b:Llig;

    new-instance v0, Llig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llig;-><init>(I)V

    sput-object v0, Llig;->a:Llig;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Llig;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Llig;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-object v1

    :pswitch_1
    sget-object v0, Lcjp;->f:Lcjp;

    return-object v0

    :pswitch_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lgbr;
.super Ljava/lang/Object;

# interfaces
.implements Lefk;


# static fields
.field public static final synthetic a:Lgbr;

.field public static final synthetic b:Lgbr;


# instance fields
.field private final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lgbr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgbr;-><init>(I)V

    sput-object v0, Lgbr;->b:Lgbr;

    new-instance v0, Lgbr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbr;-><init>(I)V

    sput-object v0, Lgbr;->a:Lgbr;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgbr;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkeb;)Lmqp;
    .locals 0

    iget p1, p0, Lgbr;->c:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lmpx;->a:Lmpx;

    return-object p1

    :pswitch_0
    sget-object p1, Lmpx;->a:Lmpx;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

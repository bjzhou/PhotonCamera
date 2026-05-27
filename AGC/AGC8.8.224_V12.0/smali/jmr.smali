.class public final synthetic Ljmr;
.super Ljava/lang/Object;

# interfaces
.implements Ljoj;


# static fields
.field public static final synthetic a:Ljmr;

.field public static final synthetic b:Ljmr;

.field public static final synthetic c:Ljmr;

.field public static final synthetic d:Ljmr;


# instance fields
.field private final synthetic e:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ljmr;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljmr;-><init>(I)V

    sput-object v0, Ljmr;->d:Ljmr;

    new-instance v0, Ljmr;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljmr;-><init>(I)V

    sput-object v0, Ljmr;->c:Ljmr;

    new-instance v0, Ljmr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljmr;-><init>(I)V

    sput-object v0, Ljmr;->b:Ljmr;

    new-instance v0, Ljmr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljmr;-><init>(I)V

    sput-object v0, Ljmr;->a:Ljmr;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljmr;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljot;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljmr;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Llgn;->d(Ljot;)Ljot;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1}, Llgn;->e(Ljot;)Ljot;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1}, Ljot;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljkh;

    invoke-interface {p1}, Ljkh;->b()Ljot;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

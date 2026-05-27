.class public final synthetic Ljlg;
.super Ljava/lang/Object;

# interfaces
.implements Lmqs;


# static fields
.field public static final synthetic a:Ljlg;

.field public static final synthetic b:Ljlg;

.field public static final synthetic c:Ljlg;


# instance fields
.field private final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ljlg;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljlg;-><init>(I)V

    sput-object v0, Ljlg;->c:Ljlg;

    new-instance v0, Ljlg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljlg;-><init>(I)V

    sput-object v0, Ljlg;->b:Ljlg;

    new-instance v0, Ljlg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljlg;-><init>(I)V

    sput-object v0, Ljlg;->a:Ljlg;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljlg;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Ljlg;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lmnp;

    const-string v0, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-static {p1, v0}, Lkrm;->o(Lmnp;Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Lkhr;

    invoke-virtual {p1}, Lkhr;->e()Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Lpap;

    invoke-virtual {p1}, Lpap;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lpap;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Fallback-Cronet-Provider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

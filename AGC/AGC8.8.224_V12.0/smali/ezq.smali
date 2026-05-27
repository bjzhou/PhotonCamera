.class public final synthetic Lezq;
.super Ljava/lang/Object;

# interfaces
.implements Lfaj;


# static fields
.field public static final synthetic a:Lezq;

.field public static final synthetic b:Lezq;

.field public static final synthetic c:Lezq;

.field public static final synthetic d:Lezq;

.field public static final synthetic e:Lezq;

.field public static final synthetic f:Lezq;

.field public static final synthetic g:Lezq;


# instance fields
.field private final synthetic h:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lezq;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lezq;-><init>(I)V

    sput-object v0, Lezq;->g:Lezq;

    new-instance v0, Lezq;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lezq;-><init>(I)V

    sput-object v0, Lezq;->f:Lezq;

    new-instance v0, Lezq;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lezq;-><init>(I)V

    sput-object v0, Lezq;->e:Lezq;

    new-instance v0, Lezq;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lezq;-><init>(I)V

    sput-object v0, Lezq;->d:Lezq;

    new-instance v0, Lezq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lezq;-><init>(I)V

    sput-object v0, Lezq;->c:Lezq;

    new-instance v0, Lezq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lezq;-><init>(I)V

    sput-object v0, Lezq;->b:Lezq;

    new-instance v0, Lezq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lezq;-><init>(I)V

    sput-object v0, Lezq;->a:Lezq;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lezq;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfaz;)V
    .locals 1

    iget v0, p0, Lezq;->h:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lfak;->l:I

    instance-of v0, p1, Lfax;

    if-eqz v0, :cond_6

    check-cast p1, Lfax;

    invoke-interface {p1}, Lfax;->bO()V

    return-void

    :pswitch_0
    sget v0, Lfak;->l:I

    instance-of v0, p1, Lfav;

    if-eqz v0, :cond_0

    check-cast p1, Lfav;

    invoke-interface {p1}, Lfav;->bN()V

    :cond_0
    return-void

    :pswitch_1
    instance-of v0, p1, Lfac;

    if-eqz v0, :cond_1

    check-cast p1, Lfac;

    invoke-interface {p1}, Lfac;->a()V

    :cond_1
    return-void

    :pswitch_2
    instance-of v0, p1, Lezz;

    if-eqz v0, :cond_2

    check-cast p1, Lezz;

    invoke-interface {p1}, Lezz;->a()V

    :cond_2
    return-void

    :pswitch_3
    instance-of v0, p1, Lfab;

    if-eqz v0, :cond_3

    check-cast p1, Lfab;

    invoke-interface {p1}, Lfab;->c()V

    :cond_3
    return-void

    :pswitch_4
    sget v0, Lezx;->e:I

    instance-of v0, p1, Lezj;

    if-eqz v0, :cond_4

    check-cast p1, Lezj;

    invoke-interface {p1}, Lezj;->a()V

    :cond_4
    return-void

    :pswitch_5
    sget v0, Lezx;->e:I

    instance-of v0, p1, Lezb;

    if-eqz v0, :cond_5

    check-cast p1, Lezb;

    invoke-interface {p1}, Lezb;->a()V

    :cond_5
    return-void

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

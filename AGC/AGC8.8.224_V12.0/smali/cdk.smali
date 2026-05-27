.class public final synthetic Lcdk;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# static fields
.field public static final synthetic a:Lcdk;

.field public static final synthetic b:Lcdk;

.field public static final synthetic c:Lcdk;

.field public static final synthetic d:Lcdk;

.field public static final synthetic e:Lcdk;

.field public static final synthetic f:Lcdk;

.field public static final g:Lcdk;


# instance fields
.field private final synthetic h:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcdk;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcdk;-><init>(I)V

    sput-object v0, Lcdk;->g:Lcdk;

    new-instance v0, Lcdk;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcdk;-><init>(I)V

    sput-object v0, Lcdk;->f:Lcdk;

    new-instance v0, Lcdk;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcdk;-><init>(I)V

    sput-object v0, Lcdk;->e:Lcdk;

    new-instance v0, Lcdk;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcdk;-><init>(I)V

    sput-object v0, Lcdk;->d:Lcdk;

    new-instance v0, Lcdk;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcdk;-><init>(I)V

    sput-object v0, Lcdk;->c:Lcdk;

    new-instance v0, Lcdk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcdk;-><init>(I)V

    sput-object v0, Lcdk;->b:Lcdk;

    new-instance v0, Lcdk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcdk;-><init>(I)V

    sput-object v0, Lcdk;->a:Lcdk;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcdk;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcdk;->h:I

    return-void
.end method

.class public final synthetic Lgjn;
.super Ljava/lang/Object;

# interfaces
.implements Lgal;


# static fields
.field public static final synthetic a:Lgjn;

.field public static final synthetic b:Lgjn;

.field public static final synthetic c:Lgjn;

.field public static final synthetic d:Lgjn;


# instance fields
.field private final synthetic e:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lgjn;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lgjn;-><init>(I)V

    sput-object v0, Lgjn;->d:Lgjn;

    new-instance v0, Lgjn;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgjn;-><init>(I)V

    sput-object v0, Lgjn;->c:Lgjn;

    new-instance v0, Lgjn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgjn;-><init>(I)V

    sput-object v0, Lgjn;->b:Lgjn;

    new-instance v0, Lgjn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgjn;-><init>(I)V

    sput-object v0, Lgjn;->a:Lgjn;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgjn;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget v0, p0, Lgjn;->e:I

    return-void
.end method

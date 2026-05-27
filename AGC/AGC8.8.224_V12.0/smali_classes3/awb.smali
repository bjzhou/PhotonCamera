.class public final Lawb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lawb;

.field public static final b:Lawb;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lawb;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1}, Lawb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lawb;->a:Lawb;

    new-instance v0, Lawb;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1}, Lawb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lawb;->b:Lawb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lawb;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lawb;->c:Ljava/lang/String;

    return-object v0
.end method

.class public Lons;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lonr;

.field public static final b:Lons;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonr;

    invoke-direct {v0}, Lonr;-><init>()V

    sput-object v0, Lons;->a:Lonr;

    sget-object v0, Lolq;->a:Lolp;

    invoke-virtual {v0}, Lolp;->a()Lons;

    move-result-object v0

    sput-object v0, Lons;->b:Lons;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

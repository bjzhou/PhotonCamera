.class public final Ljmu;
.super Ljde;

# interfaces
.implements Ljdi;


# static fields
.field public static final a:Ligo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ligo;

    new-instance v1, Ljms;

    invoke-direct {v1}, Ljms;-><init>()V

    const-string v2, "LocationServices.API"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3, v3}, Ligo;-><init>(Ljava/lang/String;Ljfc;[B[B)V

    sput-object v0, Ljmu;->a:Ligo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    sget-object v2, Ljmu;->a:Ligo;

    sget-object v3, Ljcy;->r:Ljcx;

    sget-object v4, Ljdd;->a:Ljdd;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ljde;-><init>(Landroid/content/Context;Ligo;Ljcy;Ljdd;[B[B[B)V

    return-void
.end method


# virtual methods
.method public final a()Ljot;
    .locals 2

    invoke-static {}, Ljfm;->a()Ljfl;

    move-result-object v0

    sget-object v1, Ljpc;->a:Ljpc;

    iput-object v1, v0, Ljfl;->a:Ljfh;

    const/16 v1, 0x96e

    iput v1, v0, Ljfl;->c:I

    invoke-virtual {v0}, Ljfl;->a()Ljfm;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljde;->e(Ljfm;)Ljot;

    move-result-object v0

    return-object v0
.end method

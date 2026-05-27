.class public final Ljhu;
.super Ljde;

# interfaces
.implements Ljdi;


# static fields
.field private static final a:Ljfc;

.field private static final b:Ligo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljht;

    invoke-direct {v0}, Ljht;-><init>()V

    sput-object v0, Ljhu;->a:Ljfc;

    new-instance v1, Ligo;

    const-string v2, "ClientTelemetry.API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Ligo;-><init>(Ljava/lang/String;Ljfc;[B[B)V

    sput-object v1, Ljhu;->b:Ligo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljhm;)V
    .locals 8

    sget-object v2, Ljhu;->b:Ligo;

    sget-object v4, Ljdd;->a:Ljdd;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Ljde;-><init>(Landroid/content/Context;Ligo;Ljcy;Ljdd;[B[B[B)V

    return-void
.end method


# virtual methods
.method public final a(Ljhl;)V
    .locals 4

    invoke-static {}, Ljfm;->a()Ljfl;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljca;

    sget-object v2, Ljbx;->a:Ljca;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, v0, Ljfl;->b:[Ljca;

    invoke-virtual {v0}, Ljfl;->b()V

    new-instance v1, Ljhs;

    invoke-direct {v1, p1, v3}, Ljhs;-><init>(Ljhl;I)V

    iput-object v1, v0, Ljfl;->a:Ljfh;

    invoke-virtual {v0}, Ljfl;->a()Ljfm;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljde;->j(Ljfm;)V

    return-void
.end method

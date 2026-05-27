.class public final Ljqe;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ligo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final b:Ljfc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljqc;

    invoke-direct {v0}, Ljqc;-><init>()V

    sput-object v0, Ljqe;->b:Ljfc;

    new-instance v1, Ligo;

    const-string v2, "Wearable.API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Ligo;-><init>(Ljava/lang/String;Ljfc;[B[B)V

    sput-object v1, Ljqe;->a:Ligo;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljde;
    .locals 9

    new-instance v8, Ljde;

    sget-object v4, Ljdd;->a:Ljdd;

    sget-object v2, Ljqe;->a:Ligo;

    sget-object v3, Ljqd;->a:Ljqd;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljde;-><init>(Landroid/content/Context;Ligo;Ljcy;Ljdd;[B[B[B)V

    return-object v8
.end method

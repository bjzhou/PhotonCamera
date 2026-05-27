.class public final Ljjs;
.super Ljde;


# static fields
.field public static final b:Ljjr;


# instance fields
.field public final a:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljjr;

    invoke-direct {v0}, Ljjr;-><init>()V

    sput-object v0, Ljjs;->b:Ljjr;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 9

    sget-object v3, Ljjm;->b:Ligo;

    const/4 v4, 0x0

    sget-object v5, Ljdd;->a:Ljdd;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Ljde;-><init>(Landroid/content/Context;Landroid/app/Activity;Ligo;Ljcy;Ljdd;[B[B[B)V

    iput-object p1, p0, Ljjs;->a:Landroid/app/Activity;

    return-void
.end method

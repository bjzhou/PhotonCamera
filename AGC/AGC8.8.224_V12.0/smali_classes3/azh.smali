.class public final Lazh;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:Lazi;

.field public final b:Ljava/util/Map;

.field public final c:Lbkb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayedWorkTracker"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lazi;Lbkb;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazh;->a:Lazi;

    iput-object p2, p0, Lazh;->c:Lbkb;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lazh;->b:Ljava/util/Map;

    return-void
.end method

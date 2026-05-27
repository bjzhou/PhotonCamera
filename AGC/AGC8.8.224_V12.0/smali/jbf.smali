.class public final Ljbf;
.super Ljbc;


# static fields
.field public static final j:Ljava/util/List;


# instance fields
.field public final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Ljbf;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/EnumSet;Lmrl;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljbc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/EnumSet;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Ljbf;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final e(Lnxy;)Ljbd;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljbd;

    invoke-static {p1}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-direct {v0, p0, p1}, Ljbd;-><init>(Ljbf;Lnxy;)V

    return-object v0
.end method

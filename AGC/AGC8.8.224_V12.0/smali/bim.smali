.class public final Lbim;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbim;


# instance fields
.field public final b:Lxe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbim;

    invoke-direct {v0}, Lbim;-><init>()V

    sput-object v0, Lbim;->a:Lbim;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxe;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lxe;-><init>(I)V

    iput-object v0, p0, Lbim;->b:Lxe;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lbga;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbim;->b:Lxe;

    invoke-virtual {v0, p1, p2}, Lxe;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

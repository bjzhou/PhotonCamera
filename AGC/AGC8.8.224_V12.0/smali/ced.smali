.class public final Lced;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcec;

    invoke-direct {v0}, Lcec;-><init>()V

    sput-object v0, Lced;->a:Lbze;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Lbze;ZI)Ljgt;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljgt;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljgt;-><init>(Ljava/lang/String;Lbze;ZI[B[B)V

    return-object p1
.end method

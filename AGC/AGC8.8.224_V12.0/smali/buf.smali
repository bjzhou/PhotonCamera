.class public final Lbuf;
.super Ljava/lang/Object;

# interfaces
.implements Lbuz;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;IILbqf;)Lva;
    .locals 1

    check-cast p1, Ljava/io/File;

    new-instance p2, Lva;

    new-instance p3, Lcah;

    invoke-direct {p3, p1}, Lcah;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lbvh;

    const/4 v0, 0x1

    invoke-direct {p4, p1, v0}, Lbvh;-><init>(Ljava/io/File;I)V

    invoke-direct {p2, p3, p4}, Lva;-><init>(Lbqb;Lbqo;)V

    return-object p2
.end method

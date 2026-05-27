.class public final Lcux;
.super Ljava/lang/Object;

# interfaces
.implements Ljxv;


# instance fields
.field private final a:Ldhi;


# direct methods
.method public constructor <init>(Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcux;->a:Ldhi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/FileDescriptor;I)Lkpf;
    .locals 6

    new-instance p2, Lkxi;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object p1, p0, Lcux;->a:Ldhi;

    sget-object v0, Ldgu;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->c()V

    const/4 p1, 0x0

    invoke-static {p1}, Lacx;->d(I)Loxq;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lkxi;-><init>(Ljava/io/FileOutputStream;Loxq;[B[B[B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object p1

    invoke-static {p1}, Lj$/util/DesugarTimeZone;->getTimeZone(Lj$/time/ZoneId;)Ljava/util/TimeZone;

    iget-object p1, p0, Lcux;->a:Ldhi;

    iget-object v2, p2, Lkxi;->a:Lamv;

    invoke-virtual {v2, v0, v1}, Lamv;->d(J)V

    invoke-interface {p1}, Ldhi;->e()V

    new-instance p1, Lkxe;

    const-string v0, "gca-muxer"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lkxe;-><init>(Lkpf;Ljava/util/concurrent/ExecutorService;)V

    return-object p1
.end method
